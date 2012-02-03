.class public Lcom/android/internal/telephony/DataConnection$FailResult;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FailResult"
.end annotation


# instance fields
.field private cause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field private connection:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "conn"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->cause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 290
    iput-object p3, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->connection:Ljava/lang/Object;

    .line 291
    return-void
.end method


# virtual methods
.method public getConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->connection:Ljava/lang/Object;

    return-object v0
.end method

.method public getFailCause()Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$FailResult;->cause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method
