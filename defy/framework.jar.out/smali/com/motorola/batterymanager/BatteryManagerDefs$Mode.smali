.class public final Lcom/motorola/batterymanager/BatteryManagerDefs$Mode;
.super Ljava/lang/Object;
.source "BatteryManagerDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/batterymanager/BatteryManagerDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# static fields
.field public static final BATTERY_SAVER:I = 0x2

.field public static final CUSTOM:I = 0x3

.field public static final NIGHT_SAVER:I = 0x1

.field public static final PERFORMANCE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
