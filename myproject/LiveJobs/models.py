from django.db import models

# Create your models here.
# Inside models.py or a new file named viewmodels.py

class LiveJobViewModel:
    def __init__(self, ID, MasterJobID=None, PriorityID=None, IsWatchListed=None, IsFlagged=None,
                 CustomerID=None, AccountCode=None, AccountName=None, VehicleTypeCode=None,
                 JourneyShort=None, ExceptionDetail=None, ReadyAt=None, ETA=None, NoLaterThan=None,
                 Date=None, VanFill=None, CompletionPercentage=None, DriverVehicleTypeCode=None,
                 DriverVanFill=None, CustomerPrice=None, DriverPrice=None, Status=None,
                 JobItemStatus=None, CallSign=None, Action=None, IsOutstandingPOB=None,
                 IsOutstandingPOD=None, IsCompleted=None, IsTomorrows=None, DriverMessages=None,
                 IsAllocated=None, IsUnAllocated=None, IsLiveJob=None, IsStandBy=None,
                 IsException=None, IsExternal=None, Performance=None, CountDown=None, Margin=None, **kwargs):
        self.ID = ID
        self.MasterJobID = MasterJobID
        self.PriorityID = PriorityID
        self.IsWatchListed = IsWatchListed
        self.IsFlagged = IsFlagged
        self.CustomerID = CustomerID
        self.AccountCode = AccountCode
        self.AccountName = AccountName
        self.VehicleTypeCode = VehicleTypeCode
        self.JourneyShort = JourneyShort
        self.ExceptionDetail = ExceptionDetail
        self.ReadyAt = ReadyAt
        self.ETA = ETA
        self.NoLaterThan = NoLaterThan
        self.Date = Date
        self.VanFill = VanFill
        self.CompletionPercentage = CompletionPercentage
        self.DriverVehicleTypeCode = DriverVehicleTypeCode
        self.DriverVanFill = DriverVanFill
        self.CustomerPrice = CustomerPrice
        self.DriverPrice = DriverPrice
        self.Status = Status
        self.JobItemStatus = JobItemStatus
        self.CallSign = CallSign
        self.Action = Action
        self.IsOutstandingPOB = IsOutstandingPOB
        self.IsOutstandingPOD = IsOutstandingPOD
        self.IsCompleted = IsCompleted
        self.IsTomorrows = IsTomorrows
        self.DriverMessages = DriverMessages
        self.IsAllocated = IsAllocated
        self.IsUnAllocated = IsUnAllocated
        self.IsLiveJob = IsLiveJob
        self.IsStandBy = IsStandBy
        self.IsException = IsException
        self.IsExternal = IsExternal
        self.Performance = Performance
        self.CountDown = CountDown
        self.Margin = Margin
        
        # Initialize any additional properties based on kwargs
        for key, value in kwargs.items():
            setattr(self, key, value)
