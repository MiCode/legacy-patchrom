.class Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService$RulesEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Rule"
.end annotation


# instance fields
.field public mPermitted:Z

.field public mRegex:Ljava/util/regex/Pattern;

.field public mRegexStr:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/DeviceManager3LMService$RulesEngine;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService$RulesEngine;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "regexStr"
    .parameter "permitted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->this$1:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegex:Ljava/util/regex/Pattern;

    iput-boolean p3, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mPermitted:Z

    return-void
.end method
