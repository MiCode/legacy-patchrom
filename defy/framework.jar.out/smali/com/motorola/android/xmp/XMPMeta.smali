.class public interface abstract Lcom/motorola/android/xmp/XMPMeta;
.super Ljava/lang/Object;
.source "XMPMeta.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract appendArrayItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract countArrayItems(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract deleteArrayItem(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract deleteQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract deleteStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract doesArrayItemExist(Ljava/lang/String;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract doesQualifierExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract doesStructFieldExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/motorola/android/xmp/properties/XMPProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/properties/XMPProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/properties/XMPProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getPropertyDate(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/XMPDateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getPropertyLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/properties/XMPProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/properties/XMPProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[BLcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;ZLcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyDouble(Ljava/lang/String;Ljava/lang/String;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyDouble(Ljava/lang/String;Ljava/lang/String;DLcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyLong(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setPropertyLong(Ljava/lang/String;Ljava/lang/String;JLcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method

.method public abstract setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation
.end method
