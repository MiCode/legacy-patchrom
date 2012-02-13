.class public Lcom/motorola/batterymanager/BatteryManagerDefs;
.super Ljava/lang/Object;
.source "BatteryManagerDefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/batterymanager/BatteryManagerDefs$DataConnection;,
        Lcom/motorola/batterymanager/BatteryManagerDefs$Mode;,
        Lcom/motorola/batterymanager/BatteryManagerDefs$DataSettings;
    }
.end annotation


# static fields
.field public static final ACTION_BM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.batterymanager.BM_STATE_CHANGED"

.field public static final ACTION_START_BATTERY_MANAGER:Ljava/lang/String; = "com.motorola.batterymanager.START_BATTERY_MANAGER"

.field public static final APN_ENABLE_REQUEST_ACCEPTED:I = 0x0

.field public static final APN_TYPE_NOT_SUPPORTED:I = 0x1

.field public static final KEY_BM_MODE:Ljava/lang/String; = "bmMode"

.field public static final KEY_DATA_CONNECTION:Ljava/lang/String; = "dataConnection"

.field public static final NO_DURATION:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
