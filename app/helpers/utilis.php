<?php

function view($view, $data = [])
{
	require_once APPROOT . "/app/views/" . $view . ".php";
}