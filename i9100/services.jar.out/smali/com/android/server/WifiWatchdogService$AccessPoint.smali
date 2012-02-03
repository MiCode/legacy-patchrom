.class Lcom/android/server/WifiWatchdogService$AccessPoint;
.super Ljava/lang/Object;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessPoint"
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    .line 1170
    iput-object p2, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    .line 1171
    return-void
.end method

.method private hasNull()Z
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 1179
    instance-of v3, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;

    if-nez v3, :cond_0

    move v3, v5

    .line 1183
    :goto_0
    return v3

    .line 1180
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/WifiWatchdogService$AccessPoint;

    move-object v2, v0

    .line 1181
    .local v2, otherAp:Lcom/android/server/WifiWatchdogService$AccessPoint;
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$AccessPoint;->hasNull()Z

    move-result v1

    .line 1183
    .local v1, iHaveNull:Z
    if-eqz v1, :cond_1

    invoke-direct {v2}, Lcom/android/server/WifiWatchdogService$AccessPoint;->hasNull()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, v2, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1191
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
