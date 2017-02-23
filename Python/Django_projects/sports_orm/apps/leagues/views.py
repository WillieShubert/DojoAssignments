from django.shortcuts import render, redirect
from .models import League, Team, Player

from . import team_maker

def index(request):
	context = {
		"leagues": League.objects.all(),
		"teams": Team.objects.all(),
		"players": Player.objects.all(),
		# "leagues": League.objects.filter(sport = "Baseball") #...all baseball leagues
		#"leagues": League.objects.filter(name__contains = "Womens'") # ...all womens' leagues
		#"leagues": League.objects.filter(sport__contains = "hockey")# ...all leagues where sport is any type of hockey
		#"leagues": League.objects.exclude(sport__contains = "football")# ...all leagues where sport is something OTHER THAN football
		#"leagues": League.objects.filter(name__contains = "conference")# ...all leagues that call themselves "conferences"
		#"leagues": League.objects.filter(name__contains = "atlantic")# ...all leagues in the Atlantic region
		#"teams": Team.objects.filter(location = "Dallas")# ...all teams based in Dallas
		#"teams": Team.objects.filter(team_name__contains = "raptor")# ...all teams named the Raptors
		#"teams": Team.objects.filter(location__contains = "city")# ...all teams whose location includes "City"
		#"teams": Team.objects.filter(team_name__contains = "" )# ...all teams whose names begin with "T"
		#"teams" : Team.objects.all().order_by('location')# ...all teams, ordered alphabetically by location
		#"teams" : Team.objects.all().order_by('team_name').reverse()# ...all teams, ordered by team name in reverse alphabetical order
		#"players":Player.objects.filter(last_name = "Cooper")# ...every player with last name "Cooper"
		#"players":Player.objects.filter(first_name = "Joshua")# ...every player with first name "Joshua"
		#"players":Player.objects.filter(last_name = "Cooper").exclude(first_name="Joshua")# ...every player with last name "Cooper" EXCEPT FOR Joshua
		#"players":Player.objects.filter(first_name = "Wyatt")|Player.objects.filter(first_name = "Alexander") #...all players with first name "Alexander" OR first name "Wyatt"
		# "players":Player.objects.filter(curr_team =Team.objects.get(id=28))# ...all (current) players on the Boston Penguins
		#"players":Player.objects.filter(curr_team__league__name="International Collegiate Baseball Conference")#...all (current) players in the International Collegiate Baseball Conference
		# "players":Player.objects.filter(curr_team__league__name="American Conference of Amateur Football", last_name="Lopez")#..all (current) players in the American Conference of Amateur Football with last name "Lopez"
		#"players": Player.objects.filter(curr_team__league__sport="Football")#...all football players
		#"teams": Team.objects.filter(curr_players__first_name="Sophia")#...all teams with a (current) player named "Sophia"
		#"leagues": League.objects.filter(teams__curr_players__first_name="Sophia")#...all teams with a (current) player named "Sophia"

		# 'players': Player.objects.filter(last_name="Flores").exclude(curr_team__team_name="Roughriders") #  ...everyone with the last name "Flores" who DOESN'T (currently) play for the Washington Roughriders
				#...everyone with the last name "Flores" who DOESN'T (currently) play for the Washington Roughriders
		#"players": Player.objects.filter(last_name="Flores").exclude(curr_team__team_name="Roughriders")
		#...all teams, past and present, that Samuel Evans has played with
		#"teams":Team.objects.filter(all_players__first_name="Samuel",all_players__last_name="Evans")
		#...all players, past and present, with the Manitoba Tiger-Cats
		#"players": Player.objects.filter(all_teams__team_name="Tiger-Cats")
		#...all players who were formerly (but aren't currently) with the Wichita Vikings
		#"players":Player.objects.filter(all_teams__team_name="Vikings").exclude(curr_team__team_name="Vikings")
		#...every team that Jacob Gray played for before he joined the Oregon Colts
		#"teams":Team.objects.filter(all_players__first_name="Jacob", all_players__last_name="Gray").exclude(team_name="Colts")
		#...everyone named "Joshua" who has ever played in the Atlantic Federation of Amateur Baseball Players
		#"players":Player.objects.filter(first_name="Joshua", all_teams__league=League.objects.get(id=3))
		#...all teams that have had 12 or more players, past and present. (HINT: Look up the Django annotate function.)
		#"teams":Team.objects.annotate(num_players=Count("all_players")).filter(num_players__gte=12)
		#...all players, sorted by the number of teams they've played for
		# "players": Player.objects.all().annotate(num_teams=Count("all_teams")).order_by('num_teams')



		}
	return render(request,"leagues/index.html", context)


# 	}
#
#
def make_data(request):
	team_maker.gen_leagues(10)
	team_maker.gen_teams(50)
	team_maker.gen_players(200)
#
	return redirect("index")
