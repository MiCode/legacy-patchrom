.class public Lcom/android/internal/telephony/gsm/RoamStatusHandler;
.super Ljava/lang/Object;
.source "RoamStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/RoamStatusHandler$FileConfig;,
        Lcom/android/internal/telephony/gsm/RoamStatusHandler$SQLConfig;,
        Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;
    }
.end annotation


# static fields
.field private static final nidGrouper:Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/RoamStatusHandler;->nidGrouper:Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSameGroup(Ljava/lang/String;)Z
    .locals 1
    .parameter "nid"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/RoamStatusHandler;->nidGrouper:Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;->isSameGroup(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setGrouper(Ljava/lang/String;)V
    .locals 2
    .parameter "sim_mcc"

    .prologue
    const-string v0, "46000,46002,46007;46001,46006;4666,46688;46611,46692;45400,45402,45418;45416,45419;45501,45504;45503,45505;45406,45415;45403,45405"

    .local v0, nids:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/gsm/RoamStatusHandler;->nidGrouper:Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;->setGrouper(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
