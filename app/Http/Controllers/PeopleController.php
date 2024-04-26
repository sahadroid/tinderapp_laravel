<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use App\Models\People;

//use Illuminate\Support\Facades\Session;

/**
 * @OA\Tag(
 *     name="people",
 *     description="Operations related to people"
 * )
 */
class PeopleController extends Controller
{
  /**
   * @OA\Schema(
   *     schema="PeopleRequest",
   *     required={"name", "age", "picture", "location"},
   *     @OA\Property(property="name", type="string"),
   *     @OA\Property(property="age", type="integer"),
   *     @OA\Property(property="picture", type="string"),
   *     @OA\Property(property="location", type="string")
   * )
   */


  /**
   * @OA\Get(
   *     path="/api/people",
   *     tags={"people"},
   *     summary="Get all people",
   *     description="Returns a list of all people.",
   *     @OA\Response(response="200", description="List of people"),
   * )
   */
  public function index(Request $request)
  {
    $peoples = People::withCount(['reviews as picture_like_count' => function ($query) {
      $query->where('picture', 'like');
    }, 'reviews as picture_nope_count' => function ($query) {
      $query->where('picture', 'nope');
    }])->
    withCount(['reviews as person_like_count' => function ($query) {
      $query->where('person', 'like');
    }, 'reviews as person_unlike_count' => function ($query) {
      $query->where('person', 'unlike');
    }])
    ->get();

    //$people = People::all();
    return response()->json($peoples, Response::HTTP_OK);
  }


  /**
   * @OA\Get(
   *     path="/api/people/{id}",
   *     tags={"people"},
   *     summary="Get a specific people",
   *     description="Returns details of a specific people.",
   *     @OA\Parameter(
   *         name="id",
   *         in="path",
   *         required=true,
   *         description="ID of the people",
   *         @OA\Schema(type="integer")
   *     ),
   *     @OA\Response(response="200", description="Details of the people"),
   *     @OA\Response(response="404", description="Person not found")
   * )
   */
  public function show($id)
  {
    $people = People::withCount(['reviews as picture_like_count' => function ($query) {
      $query->where('picture', 'like');
    }, 'reviews as picture_nope_count' => function ($query) {
      $query->where('picture', 'nope');
    }])->
    withCount(['reviews as person_like_count' => function ($query) {
      $query->where('person', 'like');
    }, 'reviews as person_unlike_count' => function ($query) {
      $query->where('person', 'unlike');
    }])->find($id);
    if (!$people) {
      return response()->json(['message' => 'People not found'], Response::HTTP_NOT_FOUND);
    }

    return response()->json($people, Response::HTTP_OK);
  }



  /**
   * @OA\Post(
   *     path="/api/people",
   *     tags={"people"},
   *     summary="Create a new people",
   *     description="Creates a new people.",
   *     @OA\RequestBody(
   *         required=true,
   *         @OA\JsonContent(ref="#/components/schemas/PeopleRequest")
   *     ),
   *     @OA\Response(response="201", description="New people created"),
   *     @OA\Response(response="422", description="Validation error")
   * )
   */
  public function store(Request $request)
  {

    $validator = Validator::make($request->all(), [
      'name' => 'required|string',
      'age' => 'required|integer',
      'picture' => 'required|string',
      'location' => 'required|string',
    ]);

    if ($validator->fails()) {
      return response()->json($validator->errors(), Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    $people = People::create($request->all());

    return response()->json($people, Response::HTTP_CREATED);
  }

  /**
   * @OA\Put(
   *     path="/api/people/{id}",
   *     tags={"people"},
   *     summary="Update a specific people",
   *     description="Updates details of a specific people.",
   *     @OA\Parameter(
   *         name="id",
   *         in="path",
   *         required=true,
   *         description="ID of the people",
   *         @OA\Schema(type="integer")
   *     ),
   *     @OA\RequestBody(
   *         required=true,
   *         @OA\JsonContent(ref="#/components/schemas/PeopleRequest")
   *     ),
   *     @OA\Response(response="200", description="Details of the updated people"),
   *     @OA\Response(response="404", description="People not found"),
   *     @OA\Response(response="422", description="Validation error")
   * )
   */

  public function update(Request $request, $id)
  {
    $validator = Validator::make($request->all(), [
      'name' => 'string',
      'age' => 'integer',
      'picture' => 'string',
      'location' => 'string',
    ]);

    if ($validator->fails()) {
      return response()->json($validator->errors(), Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    $people = People::find($id);

    if (!$people) {
      return response()->json(['message' => 'Person not found'], Response::HTTP_NOT_FOUND);
    }

    $people->update($request->all());

    return response()->json($people, Response::HTTP_OK);
  }



  /**
   * @OA\Delete(
   *     path="/api/people/{id}",
   *     tags={"people"},
   *     summary="Delete a specific people",
   *     description="Deletes a specific people.",
   *     @OA\Parameter(
   *         name="id",
   *         in="path",
   *         required=true,
   *         description="ID of the people",
   *         @OA\Schema(type="integer")
   *     ),
   *     @OA\Response(response="204", description="People deleted"),
   *     @OA\Response(response="404", description="People not found")
   * )
   */

  public function destroy($id)
  {
    $people = People::find($id);
    if (!$people) {
      return response()->json(['message' => 'People not found'], Response::HTTP_NOT_FOUND);
    }

    $people->delete();
    return response()->json(null, Response::HTTP_NO_CONTENT);
  }
}
