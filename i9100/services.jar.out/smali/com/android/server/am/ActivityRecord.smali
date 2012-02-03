.class Lcom/android/server/am/ActivityRecord;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final baseDir:Ljava/lang/String;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configDestroy:Z

.field configuration:Landroid/content/res/Configuration;

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field final dataDir:Ljava/lang/String;

.field delayedResume:Z

.field description:Ljava/lang/CharSequence;

.field finishing:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field final fullscreen:Z

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field final isHomeActivity:Z

.field keysPaused:Z

.field labelRes:I

.field launchFailed:Z

.field launchMode:I

.field launchTime:J

.field final launchedFromUid:I

.field newIntents:Ljava/util/ArrayList;

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field final requestCode:I

.field final resDir:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field final stack:Lcom/android/server/am/ActivityStack;

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field theme:I

.field thumbnail:Landroid/graphics/Bitmap;

.field thumbnailNeeded:Z

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field visible:Z

.field waitingVisible:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V
    .locals 8
    .parameter "_service"
    .parameter "_stack"
    .parameter "_caller"
    .parameter "_launchedFromUid"
    .parameter "_intent"
    .parameter "_resolvedType"
    .parameter "aInfo"
    .parameter "_configuration"
    .parameter "_resultTo"
    .parameter "_resultWho"
    .parameter "_reqCode"
    .parameter "_componentSpecified"

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 193
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 194
    iput-object p7, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 195
    iput p4, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 196
    iput-object p5, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 197
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 198
    iput-object p6, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 199
    move/from16 v0, p12

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    .line 200
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 201
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 202
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 203
    move/from16 v0, p11

    move-object v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 204
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 205
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 206
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 207
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 208
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 209
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 210
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 211
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 212
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 213
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 214
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 215
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 216
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 217
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 218
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 219
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 221
    if-eqz p7, :cond_c

    .line 222
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v4, :cond_0

    iget v4, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 225
    :cond_0
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 230
    :goto_0
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 231
    iget v4, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 233
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    .line 234
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    .line 235
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    .line 236
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 237
    iget v4, p7, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 238
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    if-nez v4, :cond_1

    .line 239
    iget-object v2, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 240
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 241
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 243
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    .line 244
    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 245
    iget v4, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    if-eqz p3, :cond_7

    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_2

    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_7

    .line 249
    :cond_2
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 254
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    iget v4, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    .line 255
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    :cond_3
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 259
    iget v4, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v4, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    .line 261
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    :goto_3
    sget-object v7, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 264
    .local v3, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_9

    iget-object v4, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v3, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 269
    if-eqz p12, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq p4, v4, :cond_4

    if-nez p4, :cond_b

    .line 273
    :cond_4
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {p5, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    invoke-virtual {p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual {p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    and-int/2addr v4, v5

    if-eqz v4, :cond_a

    const-string v4, "android"

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 285
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    .line 304
    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    :goto_5
    return-void

    .line 227
    :cond_5
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 231
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 251
    :cond_7
    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto/16 :goto_2

    .line 261
    :cond_8
    const v6, 0x1030005

    goto/16 :goto_3

    .line 264
    .restart local v3       #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 287
    :cond_a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto :goto_5

    .line 290
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto :goto_5

    .line 293
    .end local v3           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_c
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 294
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 295
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 296
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    .line 297
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    .line 298
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    .line 299
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 300
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 301
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 302
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    goto :goto_5
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .locals 2

    .prologue
    .line 501
    move-object v0, p0

    .line 502
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 505
    if-nez v0, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 509
    :cond_0
    if-nez v0, :cond_1

    .line 510
    move-object v0, p0

    .line 514
    :cond_1
    return-object v0
.end method


# virtual methods
.method addNewIntentLocked(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 316
    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 318
    .local v0, r:Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;)V
    .locals 9
    .parameter "callingUid"
    .parameter "intent"

    .prologue
    const-string v8, "Exception thrown sending new intent to "

    const-string v7, "ActivityManager"

    .line 354
    const/4 v3, 0x0

    .line 355
    .local v3, sent:Z
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_0

    .line 358
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v0, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    .end local p2
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v2, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 363
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4, v0, p0}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 364
    const/4 v3, 0x1

    move-object p2, v2

    .line 373
    .end local v0           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 374
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Landroid/content/Intent;)V

    .line 376
    :cond_1
    return-void

    .line 365
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 366
    .local v1, e:Landroid/os/RemoteException;
    :goto_1
    const-string v4, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown sending new intent to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 369
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_2
    const-string v4, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown sending new intent to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local p2
    .restart local v0       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v4

    move-object v1, v4

    move-object p2, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_2

    .line 365
    .end local p2
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v4

    move-object v1, v4

    move-object p2, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    const-string v0, " processName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchedFromUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 114
    const-string v0, " app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "frontOfTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 117
    const-string v0, " task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "taskAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "base="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " res="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    const-string v0, " data="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "labelRes=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    const-string v0, " icon=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    const-string v0, " theme=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "stateNotNeeded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 129
    const-string v0, " componentSpecified="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 130
    const-string v0, " isHomeActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "configuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 133
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "resultTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 134
    const-string v0, " resultWho="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    const-string v0, " resultCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "results="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "pendingResults="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, v0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    .line 145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, v0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, v0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "writeUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, v0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 153
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchFailed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 154
    const-string v0, " haveState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 155
    const-string v0, " icicle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "state="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 157
    const-string v0, " stopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 158
    const-string v0, " delayedResume="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 159
    const-string v0, " finishing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "keysPaused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 161
    const-string v0, " inHistory="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 162
    const-string v0, " launchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 164
    const-string v0, " visible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 165
    const-string v0, " frozenBeforeDestroy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 166
    const-string v0, " thumbnailNeeded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 167
    const-string v0, " idle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 168
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 169
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "launchTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " startTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_a

    .line 174
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "waitingVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 175
    const-string v0, " nowVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 177
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v0, :cond_c

    .line 178
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "configDestroy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 179
    const-string v0, " configChangeFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v0, :cond_d

    .line 183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "connections="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 185
    :cond_d
    return-void
.end method

.method public getKeyDispatchingTimeout()J
    .locals 4

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 556
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 557
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    .line 559
    :cond_0
    const-wide/16 v2, 0x4e20

    monitor-exit v1

    move-wide v1, v2

    .line 562
    :goto_0
    return-wide v1

    :cond_1
    const-wide/32 v2, 0xea60

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 563
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method public isInterestingToUserLocked()Z
    .locals 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDispatchingTimedOut()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "keyDispatchingTimedOut"

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, anrApp:Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 521
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 522
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 523
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-eqz v4, :cond_0

    .line 524
    monitor-exit v3

    move v3, v6

    .line 550
    :goto_0
    return v3

    .line 527
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_1

    .line 529
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 530
    monitor-exit v3

    move v3, v6

    goto :goto_0

    .line 533
    :cond_1
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v4, :cond_4

    .line 534
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 543
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    if-eqz v0, :cond_3

    .line 546
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "keyDispatchingTimedOut"

    invoke-virtual {v3, v0, v2, p0, v7}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 550
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 536
    :cond_4
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v1, info:Landroid/os/Bundle;
    const-string v4, "shortMsg"

    const-string v5, "keyDispatchingTimedOut"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v4, "longMsg"

    const-string v5, "Timed out while dispatching key event"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/am/ActivityManagerService;->finishInstrumentationLocked(Lcom/android/server/am/ProcessRecord;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 543
    .end local v1           #info:Landroid/os/Bundle;
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 406
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pauseKeyDispatchingLocked()V
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 388
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 390
    :cond_0
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 4
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    .line 326
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 327
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 328
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    .line 329
    .local v1, r:Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1

    .line 327
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 331
    if-nez p2, :cond_0

    .line 335
    :cond_2
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 333
    :cond_3
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 340
    .end local v0           #i:I
    .end local v1           #r:Lcom/android/server/am/ActivityResult;
    :cond_4
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 383
    :cond_0
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 395
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 397
    :cond_0
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .parameter "app"
    .parameter "configChanges"

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p2}, Lcom/android/server/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 413
    :cond_0
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 416
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 418
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 420
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    .line 585
    :goto_0
    return-object v1

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 580
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "HistoryRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method

.method public windowsGone()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 495
    return-void
.end method

.method public windowsVisible()V
    .locals 15

    .prologue
    .line 423
    iget-object v14, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    .line 424
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 426
    .local v8, curTime:J
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    sub-long v3, v8, v0

    .line 427
    .local v3, thisTime:J
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-wide v0, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-wide v0, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    sub-long v0, v8, v0

    move-wide v5, v0

    .line 430
    .local v5, totalTime:J
    :goto_0
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v1, v2

    const/4 v2, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 433
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 434
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 435
    const-string v0, "Displayed "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v0, ": "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {v3, v4, v13}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 439
    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 440
    const-string v0, " (total "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {v5, v6, v13}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 442
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_0
    const-string v0, "ActivityManager"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 447
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Lcom/android/server/am/UsageStatsService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    long-to-int v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UsageStatsService;->noteLaunchTime(Landroid/content/ComponentName;I)V

    .line 450
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 451
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 453
    .end local v3           #thisTime:J
    .end local v5           #totalTime:J
    .end local v8           #curTime:J
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    .line 454
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 457
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_4

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 459
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v0, :cond_6

    .line 463
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    .line 486
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 488
    :cond_4
    monitor-exit v14

    .line 489
    return-void

    .restart local v3       #thisTime:J
    .restart local v8       #curTime:J
    :cond_5
    move-wide v5, v3

    .line 427
    goto/16 :goto_0

    .line 470
    .end local v3           #thisTime:J
    .end local v8           #curTime:J
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 471
    .local v7, N:I
    if-lez v7, :cond_3

    .line 472
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v7, :cond_7

    .line 473
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 475
    .local v12, r:Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 472
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 480
    .end local v12           #r:Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 481
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 482
    .local v11, msg:Landroid/os/Message;
    const/16 v0, 0xb

    iput v0, v11, Landroid/os/Message;->what:I

    .line 483
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 488
    .end local v7           #N:I
    .end local v10           #i:I
    .end local v11           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
