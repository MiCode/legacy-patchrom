.class public Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkProfile"
.end annotation


# instance fields
.field public mMccMnc:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "mccmnc"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    .line 188
    return-void
.end method
