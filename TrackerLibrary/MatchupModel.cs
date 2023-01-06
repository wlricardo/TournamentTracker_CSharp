using System.Collections.Generic;

namespace TrackerLibrary
{
    public class MatchupModel
    {
        /// <summary>
        /// Represents a list of matches of a particular tournament
        /// </summary>
        public List<MatchupEntryModel> Entries { get; set; } = new List<MatchupEntryModel>();
        
        /// <summary>
        /// Represents the winner of the current match
        /// </summary>
        public TeamModel Winner { get; set; }
        
        /// <summary>
        /// Represents wich round is been played
        /// </summary>
        public int MatchupRound { get; set; }
    }
}