.class public final Landroid/util/GateConfig;
.super Ljava/lang/Object;
.source "GateConfig.java"


# static fields
.field public static final GATE_INTENT_V1_ACTION:Ljava/lang/String; = "com.sec.android.app.GateAgent.GATE_CONFIG"

.field public static final GATE_INTENT_V1_EXTRA_GATE_ENABLED:Ljava/lang/String; = "GATE_ENABLED"

.field public static final GATE_INTENT_V1_EXTRA_LCDTEXT_ENABLED:Ljava/lang/String; = "GATE_LCDTEXT_ENABLED"

.field public static final GATE_INTENT_V1_EXTRA_TRACE_TAG:Ljava/lang/String; = "GATE_TRACE_TAG"

.field public static final GATE_INTENT_V2_ACTION:Ljava/lang/String; = "com.sec.android.gate.GATE"

.field public static final GATE_INTENT_V2_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final GATE_V1_SYS_PROP_GATE_ENABLED:Ljava/lang/String; = "service.gate.enabled"

.field public static final GATE_V1_SYS_PROP_LCDTEXT_ENABLED:Ljava/lang/String; = "service.gate.lcdtexton"

.field public static final GATE_V1_SYS_PROP_TRACE_FILTER:Ljava/lang/String; = "service.gate.filter"

.field public static final GATE_V2_SYS_PROP_GATE_ENABLED:Ljava/lang/String; = "service.gate.enabled"

.field public static final GATE_V2_SYS_PROP_LCDTEXT_ENABLED:Ljava/lang/String; = "service.gate.lcdtexton"

.field public static final GATE_VERSION_1:I = 0x1

.field public static final GATE_VERSION_2:I = 0x2

.field public static final GATE_VERSION_LATEST:I = 0x2

.field public static final LCDTEXT_INTENT_V2_ACTION:Ljava/lang/String; = "com.sec.android.gate.LCDTEXT"

.field public static final LCDTEXT_INTENT_V2_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"

.field private static final LOG_TAG:Ljava/lang/String; = "GATE"

.field private static sGateEnabled:Z

.field private static sGateLcdtextEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Landroid/util/GateConfig;->sGateEnabled:Z

    .line 50
    sput-boolean v0, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Landroid/util/GateConfig;->sGateEnabled:Z

    return v0
.end method

.method public static isGateLcdtextEnabled()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    return v0
.end method

.method public static setGateEnabled(Z)V
    .locals 3
    .parameter "gateEnabled"

    .prologue
    .line 53
    sput-boolean p0, Landroid/util/GateConfig;->sGateEnabled:Z

    .line 55
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GateConfig.setGateEnabled. GATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LCDTEXT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static setGateLcdtextEnabled(Z)V
    .locals 3
    .parameter "lcdTextEnabled"

    .prologue
    .line 59
    sput-boolean p0, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    .line 61
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GateConfig.setGateLcdtextEnabled. GATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LCDTEXT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
