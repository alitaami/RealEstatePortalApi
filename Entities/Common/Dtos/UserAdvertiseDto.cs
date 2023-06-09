﻿using Entities.Common.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.Common.Dtos
{
    public class UserAdvertiseDto
    {
        public class SaleAdvertiseDtoForAdmin
        {
            public string AdvertiseText { get; set; }
            public string AdvertiserName { get; set; }
            public string AdvertiserNumber { get; set; }
            public string Address { get; set; }
            public int RoomCount { get; set; }
            public bool ForSale { get; set; }
            public long Meterage { get; set; }
            public long? PricePerMeter { get; set; }
            public long? TotalPrice { get; set; }
            public BuildingTypeEnum BuildingType { get; set; }
            public bool HasElevator { get; set; }
            public bool HasBalcony { get; set; }
            public bool HasWarehouse { get; set; }
            public bool HasGarage { get; set; }
            public string Description { get; set; }
            public DateTimeOffset CreatedDate { get; set; }
            public bool IsDelete { get; set; }
            public bool IsConfirm { get; set; }

        }
        public class RentAdvertiseDtoForAdmin
        {
            public string AdvertiseText { get; set; }
            public string AdvertiserName { get; set; }
            public string AdvertiserNumber { get; set; }
            public string Address { get; set; }
            public int RoomCount { get; set; }
            public long Meterage { get; set; }

            public bool ForSale { get; set; }
            public long? DespositPrice { get; set; }
            public long? RentPrice { get; set; }
            public BuildingTypeEnum BuildingType { get; set; }
            public bool HasElevator { get; set; }
            public bool HasGarage { get; set; }
            public bool HasBalcony { get; set; }
            public bool HasWarehouse { get; set; }
            public string Description { get; set; }
            public DateTimeOffset CreatedDate { get; set; }
            public bool IsDelete { get; set; }
            public bool IsConfirm { get; set; }
        }
        public class SaleAdvertiseDto
        {
            public string AdvertiseText { get; set; }
            public string AdvertiserName { get; set; }
            public string AdvertiserNumber { get; set; }
            public string Address { get; set; }
            public int RoomCount { get; set; }
            public bool ForSale { get; set; }
            public long Meterage { get; set; }
            public long? PricePerMeter { get; set; }
            public long? TotalPrice { get; set; }
            public BuildingTypeEnum BuildingType { get; set; }
            public bool HasElevator { get; set; }
            public bool HasBalcony { get; set; }
            public bool HasWarehouse { get; set; }
            public bool HasGarage { get; set; }

            public string Description { get; set; }
            public DateTimeOffset CreatedDate { get; set; }
        }
        public class RentAdvertiseDto
        {
            public string AdvertiseText { get; set; }
            public string AdvertiserName { get; set; }
            public string AdvertiserNumber { get; set; }
            public string Address { get; set; }
            public int RoomCount { get; set; }
            public long Meterage { get; set; }

            public bool ForSale { get; set; }
            public long? DespositPrice { get; set; }
            public long? RentPrice { get; set; }
            public BuildingTypeEnum BuildingType { get; set; }

            public bool HasElevator { get; set; }
            public bool HasGarage { get; set; }
            public bool HasBalcony { get; set; }
            public bool HasWarehouse { get; set; }
            public string Description { get; set; }
            public DateTimeOffset CreatedDate { get; set; }
        }
        public class AdvertiseDto
        {
            public int AdvertiseId { get; set; }
            public string AdvertiseText { get; set; }
            public string AdvertiserName { get; set; }
            public string AdvertiserNumber { get; set; }
            public string Address { get; set; }
            public int RoomCount { get; set; }
            public bool ForSale { get; set; }
            public long Meterage { get; set; }
            public long? PricePerMeter { get; set; }
            public long? TotalPrice { get; set; }
            public long? DespositPrice { get; set; }
            public long? RentPrice { get; set; }
            public BuildingTypeEnum BuildingType { get; set; }
            public bool HasElevator { get; set; }
            public bool HasBalcony { get; set; }
            public bool HasWarehouse { get; set; }
            public bool HasGarage { get; set; }

            public string Description { get; set; }
            public DateTimeOffset CreatedDate { get; set; }

        }

        public class AdvertiseImagesDto
        {
            public int FileId { get; set; }
            public string FileName { get; set; }
            public string FilePath { get; set; }
        }
    }
}
