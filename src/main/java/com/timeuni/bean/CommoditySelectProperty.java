package com.timeuni.bean;

public class CommoditySelectProperty {
    private Integer id;

    private Integer commodityId;

    private String selectPropertyRow;

    private Integer mediaType;

    private String propertyName;

    private String propertyValue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(Integer commodityId) {
        this.commodityId = commodityId;
    }

    public String getSelectPropertyRow() {
        return selectPropertyRow;
    }

    public void setSelectPropertyRow(String selectPropertyRow) {
        this.selectPropertyRow = selectPropertyRow == null ? null : selectPropertyRow.trim();
    }

    public Integer getMediaType() {
        return mediaType;
    }

    public void setMediaType(Integer mediaType) {
        this.mediaType = mediaType;
    }

    public String getPropertyName() {
        return propertyName;
    }

    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName == null ? null : propertyName.trim();
    }

    public String getPropertyValue() {
        return propertyValue;
    }

    public void setPropertyValue(String propertyValue) {
        this.propertyValue = propertyValue == null ? null : propertyValue.trim();
    }
}