using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackerLibrary
{
    public class TournamentModel
    {
        /// <summary>
        /// Represents the name of a particular tournament
        /// </summary>
        public string TournamentName { get; set; }
        
        /// <summary>
        /// Represents the fee that a team has to pay in order to 
        /// participate of a tournament
        /// </summary>
        public decimal TournamentFee { get; set; }
        
        /// <summary>
        /// Represents a list of teams wich applyed for a tournament
        /// </summary>
        public List<TeamModel> EnteredTeams { get; set; } = new List<TeamModel>();
        
        /// <summary>
        /// Represents a list of prizes
        /// </summary>
        public List<PrizeModel> Prizes { get; set; } = new List<PrizeModel>();
        
        /// <summary>
        /// Represents a list of rounds of a matchup
        /// </summary>
        public List<List<MatchupModel>> Rounds { get; set; } = new List<List<MatchupModel>>();

    }
}
