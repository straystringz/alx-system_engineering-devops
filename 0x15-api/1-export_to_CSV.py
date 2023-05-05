#!/usr/bin/python3

"""This module handles the fetching of an employee's
TODO list progress
"""
import csv
import requests
import sys

if __name__ == "__main__":
    user_id = sys.argv[1]
    user_url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(user_url + "users/{}".format(user_id)).json()
    user_name = user.get("username")
    user_todos = requests.get(
        user_url + "todos", params={"userId": user_id}).json()

    with open("{}.csv".format(user_id), "w", newline="") as csvfile:
        writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        [writer.writerow(
            [user_id, user_name, t.get("completed"), t.get("title")]
         ) for t in user_todos]
