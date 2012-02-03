.class Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SpnOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpnOverrideInfo"
.end annotation


# instance fields
.field public fake_home_on:Ljava/lang/String;

.field public spn:Ljava/lang/String;

.field public spn_display_rule:Ljava/lang/String;

.field public spn_override_only_on:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SpnOverride;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SpnOverride;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "spn"
    .parameter "spn_display_rule"
    .parameter "spn_override_only_on"
    .parameter "fake_home_on"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->this$0:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_override_only_on:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->fake_home_on:Ljava/lang/String;

    .line 49
    return-void
.end method
