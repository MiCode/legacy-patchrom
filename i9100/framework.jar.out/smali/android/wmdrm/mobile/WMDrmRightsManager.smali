.class public Landroid/wmdrm/mobile/WMDrmRightsManager;
.super Ljava/lang/Object;
.source "WMDrmRightsManager.java"

# interfaces
.implements Landroid/wmdrm/mobile/WMDRMConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "WMDRMRIGHTSMANAGER"

.field private static pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

.field private static wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 24
    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/wmdrm/mobile/WMDrmRightsManager;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDrmRightsManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 42
    new-instance v0, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v0}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    .line 45
    :cond_0
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    return-object v0
.end method

.method private isCount(I)Z
    .locals 3
    .parameter "category"

    .prologue
    .line 190
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in isCount :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printrights(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V
    .locals 4
    .parameter "wmdrmRights"

    .prologue
    const-string v3, "[WMDRM] wmdrmRights.category :"

    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 115
    if-eqz p1, :cond_1

    .line 117
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->categoryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-virtual {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v0, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] wmdrmRights.category :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-virtual {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    return-void
.end method

.method private updateDateConstraints(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;)V
    .locals 9
    .parameter "wmdrmrights"
    .parameter "rights"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 131
    iget-wide v1, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    long-to-int v0, v1

    .line 134
    .local v0, key:I
    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v1, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    iput-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 139
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 140
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 141
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 142
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 143
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 144
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v1, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    iput-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 152
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 153
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 154
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 155
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 156
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 157
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    goto/16 :goto_0

    .line 164
    :pswitch_2
    iget-object v1, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 165
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    iput-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 166
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 167
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 168
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 169
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 170
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 171
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->startDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    .line 174
    :cond_1
    iget-object v1, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;-><init>()V

    iput-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    .line 176
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_year:I

    .line 177
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mon:I

    .line 178
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_mday:I

    .line 179
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_hour:I

    .line 180
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_min:I

    .line 181
    iget-object v1, p1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->endDate:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;

    iget-object v2, p2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmDateConstraints;->tm_sec:I

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateWmdrmRightInfo(Landroid/playready/playreadymanager/PlayReadyRightsInfo;Landroid/wmdrm/mobile/WMDRMRightsInfo;)V
    .locals 6
    .parameter "pyvRightsinfo"
    .parameter "rightsInfo"

    .prologue
    .line 93
    new-instance v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;

    invoke-direct {v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;-><init>()V

    .line 94
    .local v1, wmdrmRights:Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    .line 95
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->CategoryStr:Ljava/lang/String;

    iput-object v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->categoryStr:Ljava/lang/String;

    .line 96
    iget v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->category:I

    invoke-direct {p0, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isCount(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->iscount:Z

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    int-to-long v2, v0

    iget-object v4, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v4, v4, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumCounts:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 99
    const-string v2, "WMDRMRIGHTSMANAGER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WMDRM] i value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-nez v0, :cond_1

    .line 101
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->minCount:I

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 103
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    iput v2, v1, Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;->maxCount:I

    goto :goto_1

    .line 108
    :cond_2
    iget-object v2, p1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    invoke-direct {p0, v1, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->updateDateConstraints(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;)V

    .line 110
    invoke-virtual {p2, v1}, Landroid/wmdrm/mobile/WMDRMRightsInfo;->addDRMRightsObject(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    .line 111
    invoke-direct {p0, v1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->printrights(Landroid/wmdrm/mobile/WMDRMRightsInfo$WMDrmRights;)V

    .line 112
    return-void
.end method


# virtual methods
.method public isPlayreadyFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, fileExt:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "pyv"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 280
    :goto_0
    return v1

    .line 277
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 280
    goto :goto_0
.end method

.method public isWMdrmFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "WMDRMRIGHTSMANAGER"

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, result:Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    :try_start_0
    sget-object v2, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v2, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->isPlayReadyFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    return v1

    .line 221
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 222
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] Throwing the WMDRM Exception  : "

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v2, Landroid/wmdrm/mobile/WMDRMDRMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] File is not Present RAZ"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
.end method

.method public queryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .locals 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "WMDRMRIGHTSMANAGER"

    .line 62
    const-string v4, "WMDRMRIGHTSMANAGER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WMDRM] queryRights called with file : : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    const/4 v1, 0x0

    .line 67
    .local v1, pyvRightsinfo:Landroid/playready/playreadymanager/PlayReadyRightsInfo;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    :try_start_0
    sget-object v4, Landroid/wmdrm/mobile/WMDrmRightsManager;->pyvManager:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v4, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    new-instance v3, Landroid/wmdrm/mobile/WMDRMRightsInfo;

    invoke-direct {v3}, Landroid/wmdrm/mobile/WMDRMRightsInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v2           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .local v3, rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :try_start_1
    invoke-direct {p0, v1, v3}, Landroid/wmdrm/mobile/WMDrmRightsManager;->updateWmdrmRightInfo(Landroid/playready/playreadymanager/PlayReadyRightsInfo;Landroid/wmdrm/mobile/WMDRMRightsInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v2       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    move-object v4, v3

    .line 89
    :goto_0
    return-object v4

    .line 76
    :cond_0
    :try_start_2
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v5, "[WMDRM] No rigths aer found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    const/4 v4, 0x0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 80
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] Throwing the WMDRM Exception  : "

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v4, Landroid/wmdrm/mobile/WMDRMDRMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/wmdrm/mobile/WMDRMDRMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "WMDRMRIGHTSMANAGER"

    const-string v4, "[WMDRM] WMDRM file is not present in specified path"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 79
    .end local v2           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v3       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    :catch_1
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .restart local v2       #rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    goto :goto_1
.end method

.method public setWMDrmSecureClock(J)Z
    .locals 3
    .parameter "nitzTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 247
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] setWMDrmSecureClock   called with nitzTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v0, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public updateWMDrmSecureClock(JJ)Z
    .locals 3
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v2, "WMDRMRIGHTSMANAGER"

    .line 237
    const-string v0, "WMDRMRIGHTSMANAGER"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WMDRM] updateWMDrmSecureClock  called with beforeTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n after time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v0, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    return v0
.end method
