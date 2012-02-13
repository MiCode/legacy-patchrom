.class Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;
.super Ljava/lang/Object;
.source "YahooAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/YahooAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YahooService"
.end annotation


# instance fields
.field capabilityId:I

.field prettyNameId:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "id"
    .parameter "nameId"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;->capabilityId:I

    .line 33
    iput p2, p0, Lcom/motorola/blur/settings/YahooAccountSettings$YahooService;->prettyNameId:I

    .line 34
    return-void
.end method
