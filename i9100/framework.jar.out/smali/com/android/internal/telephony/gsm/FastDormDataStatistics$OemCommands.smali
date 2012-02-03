.class Lcom/android/internal/telephony/gsm/FastDormDataStatistics$OemCommands;
.super Ljava/lang/Object;
.source "FastDormDataStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/FastDormDataStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# static fields
.field static final OEM_FUNCTION_ID_GPRS:I = 0x9

.field static final OEM_GPRS_FORCE_DORMANCY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$OemCommands;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
