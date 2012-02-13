.class public final Lcom/motorola/batterymanager/BatteryManagerDefs$DataSettings;
.super Ljava/lang/Object;
.source "BatteryManagerDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/batterymanager/BatteryManagerDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataSettings"
.end annotation


# static fields
.field public static final DATA_OFF_ALWAYS:I = 0x1

.field public static final DATA_ON_ALWAYS:I = 0x0

.field public static final RESET_DATA_OFF_ALWAYS:I = 0x3

.field public static final RESET_DATA_ON_ALWAYS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
