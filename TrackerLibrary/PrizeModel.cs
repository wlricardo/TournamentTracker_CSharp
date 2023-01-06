namespace TrackerLibrary
{
    public class PrizeModel
    {
        /// <summary>
        /// Indicates the position of the winner
        /// </summary>        
        public int PlaceNumber { get; set; }
        
        /// <summary>
        /// Indicates the name of the position
        /// </summary>
        public string PlaceName { get; set; }
        
        /// <summary>
        /// Represents the monetary value of the prize
        /// </summary>
        public decimal PrizeAmount { get; set; }
        
        /// <summary>
        /// Represents the percentage value of the prize
        /// </summary>
        public double PrizePercentage { get; set; }
    }
}