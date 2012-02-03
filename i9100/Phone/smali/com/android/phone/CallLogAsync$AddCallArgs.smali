.class public Lcom/android/phone/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final dbUri:Landroid/net/Uri;

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 100
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 101
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 102
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 103
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 104
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 118
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 119
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 120
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 121
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 122
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 123
    iput-object p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 124
    return-void
.end method
