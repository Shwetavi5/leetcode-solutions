class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        max_profit = 0
        buy = 0
        
        for sell in range(1,len(prices)):
            
            
            
            if prices[buy] > prices[sell]:
                buy = sell
            profit = prices[sell] - prices[buy]
            max_profit = max(max_profit, profit)
                
                
        return max_profit


        #max_profit = 0
        #profit = 0
        #for buy in range(len(prices)-1):
            #for sell in range(buy+1, len(prices)):
                #if prices[buy] > prices[sell]:
                    #continue
                #profit = prices[sell] - prices[buy]
                #max_profit = max(max_profit, profit)
        #return max_profit
