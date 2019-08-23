create table if not exists team_stats
(
	teamstatspk integer not null
		constraint nba_team_stats_00_to_18_pk
			primary key,
	team text,
	games_played integer,
	w integer,
	losses integer,
	win_percentage numeric,
	min numeric,
	points numeric,
	field_goals_made numeric,
	field_goals_attempted numeric,
	field_goal_percentage numeric,
	three_pointers_made numeric,
	three_pointers_attempted numeric,
	three_point_percentage numeric,
	free_throws_made numeric,
	free_throw_attempted numeric,
	free_throw_percentage numeric,
	offensive_rebounds numeric,
	defensive_rebounds numeric,
	rebounds numeric,
	assists numeric,
	turnovers numeric,
	steals numeric,
	blocks numeric,
	blocks_attempted numeric,
	personal_fouls numeric,
	personal_fouls_drawn numeric,
	plus_minus numeric,
	season text
);

alter table team_stats owner to postgres;

create unique index if not exists nba_team_stats_00_to_18_teamstatspk_uindex
	on team_stats (teamstatspk);