.class Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
.super Ljava/lang/Object;
.source "UsbDeviceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryFilter"
.end annotation


# instance fields
.field public final mManufacturer:Ljava/lang/String;

.field public final mModel:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .locals 1
    .parameter "accessory"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "manufacturer"
    .parameter "model"
    .parameter "version"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, manufacturer:Ljava/lang/String;
    const/4 v3, 0x0

    .line 111
    .local v3, model:Ljava/lang/String;
    const/4 v6, 0x0

    .line 113
    .local v6, version:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 114
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 115
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, name:Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, value:Ljava/lang/String;
    const-string v7, "manufacturer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    move-object v2, v5

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const-string v7, "model"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    move-object v3, v5

    goto :goto_1

    .line 122
    :cond_2
    const-string v7, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 123
    move-object v6, v5

    goto :goto_1

    .line 126
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    invoke-direct {v7, v2, v3, v6}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 160
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v3, v5

    .line 175
    :goto_0
    return v3

    .line 163
    :cond_1
    instance-of v3, p1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    if-eqz v3, :cond_3

    .line 164
    move-object v0, p1

    check-cast v0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    move-object v2, v0

    .line 165
    .local v2, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_0

    .line 169
    .end local v2           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    :cond_3
    instance-of v3, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v3, :cond_5

    .line 170
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    move-object v1, v0

    .line 171
    .local v1, accessory:Landroid/hardware/usb/UsbAccessory;
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_0

    .end local v1           #accessory:Landroid/hardware/usb/UsbAccessory;
    :cond_5
    move v3, v5

    .line 175
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public matches(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .parameter "acc"

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public matches(Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;)Z
    .locals 3
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 154
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "usb-accessory"

    .line 130
    const-string v0, "usb-accessory"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "manufacturer"

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "model"

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "version"

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    :cond_2
    const-string v0, "usb-accessory"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    return-void
.end method
