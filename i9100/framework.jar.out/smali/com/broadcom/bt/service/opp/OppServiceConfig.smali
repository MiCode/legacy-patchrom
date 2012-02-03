.class Lcom/broadcom/bt/service/opp/OppServiceConfig;
.super Ljava/lang/Object;
.source "OppServiceConfig.java"


# static fields
.field static final D:Z = true

.field static final DBG_REF_COUNT:Z = true

.field static final USE_BROADCAST_INTENTS:Z = false

.field static final USE_CALLBACKS:Z = true

#the value of this static final field might be set in the static constructor
.field static final USE_STANDALONE_EVENT_LOOP:Z = false

.field static final V:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isStandaloneProcess()Z

    move-result v0

    sput-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
