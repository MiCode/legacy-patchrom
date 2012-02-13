.class public Landroid/test/InstrumentationTestCase;
.super Ljunit/framework/TestCase;
.source "InstrumentationTestCase.java"


# instance fields
.field private mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;I)V

    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;I)V
    .locals 4
    .parameter "runMethod"
    .parameter "tolerance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, exception:Ljava/lang/Throwable;
    const/4 v2, 0x0

    .local v2, runCount:I
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    :goto_0
    if-ge v2, p2, :cond_1

    if-nez v1, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    throw v1

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    throw v3

    :cond_2
    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public injectInsrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .parameter "instrumentation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    return-void
.end method

.method public injectInstrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .parameter "instrumentation"

    .prologue
    iput-object p1, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    return-void
.end method

.method public final launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;
    .locals 2
    .parameter "pkg"
    .parameter
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p2, activityCls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public final launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2
    .parameter "pkg"
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p2, activityCls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .local v0, activity:Landroid/app/Activity;,"TT;"
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-object v0
.end method

.method protected runTest()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-class v11, Landroid/test/FlakyTest;

    const-string v10, "Method \""

    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, fName:Ljava/lang/String;
    invoke-static {v2}, Landroid/test/InstrumentationTestCase;->assertNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .local v3, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v8, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method \""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" should be public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x1

    .local v4, runCount:I
    const-class v7, Landroid/test/FlakyTest;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-class v7, Landroid/test/FlakyTest;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/test/FlakyTest;

    invoke-interface {v7}, Landroid/test/FlakyTest;->tolerance()I

    move-result v4

    :cond_1
    const-class v7, Landroid/test/UiThreadTest;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v4

    .local v6, tolerance:I
    move-object v5, v3

    .local v5, testMethod:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/Throwable;

    .local v1, exceptions:[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    new-instance v8, Landroid/test/InstrumentationTestCase$2;

    invoke-direct {v8, p0, v5, v6, v1}, Landroid/test/InstrumentationTestCase$2;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;I[Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    aget-object v7, v1, v9

    if-eqz v7, :cond_3

    aget-object v7, v1, v9

    throw v7

    .end local v1           #exceptions:[Ljava/lang/Throwable;
    .end local v4           #runCount:I
    .end local v5           #testMethod:Ljava/lang/reflect/Method;
    .end local v6           #tolerance:I
    :catch_0
    move-exception v7

    move-object v0, v7

    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method \""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .restart local v4       #runCount:I
    :cond_2
    invoke-direct {p0, v3, v4}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;I)V

    :cond_3
    return-void
.end method

.method public runTestOnUiThread(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Throwable;

    .local v0, exceptions:[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    new-instance v2, Landroid/test/InstrumentationTestCase$1;

    invoke-direct {v2, p0, p1, v0}, Landroid/test/InstrumentationTestCase$1;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/Runnable;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    throw v1

    :cond_0
    return-void
.end method

.method public sendKeys(Ljava/lang/String;)V
    .locals 14
    .parameter "keysSequence"

    .prologue
    const-string v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, keys:[Ljava/lang/String;
    array-length v0, v9

    .local v0, count:I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    .local v3, instrumentation:Landroid/app/Instrumentation;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v5, v9, v2

    .local v5, key:Ljava/lang/String;
    const/16 v11, 0x2a

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .local v10, repeater:I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    const/4 v11, 0x1

    move v8, v11

    .local v8, keyCount:I
    :goto_1
    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v8, :cond_2

    :try_start_0
    const-class v11, Landroid/view/KeyEvent;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .local v7, keyCodeField:Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .local v6, keyCode:I
    :try_start_1
    invoke-virtual {v3, v6}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4           #j:I
    .end local v6           #keyCode:I
    .end local v7           #keyCodeField:Ljava/lang/reflect/Field;
    .end local v8           #keyCount:I
    :cond_1
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v11

    move v8, v11

    goto :goto_1

    :catch_0
    move-exception v11

    move-object v1, v11

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid repeat count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4       #j:I
    .restart local v8       #keyCount:I
    :catch_1
    move-exception v11

    move-object v1, v11

    .local v1, e:Ljava/lang/NoSuchFieldException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown keycode: KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v11

    move-object v1, v11

    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown keycode: KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v4           #j:I
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #keyCount:I
    .end local v10           #repeater:I
    :cond_3
    invoke-virtual {v3}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void

    .restart local v4       #j:I
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #keyCode:I
    .restart local v7       #keyCodeField:Ljava/lang/reflect/Field;
    .restart local v8       #keyCount:I
    .restart local v10       #repeater:I
    :catch_3
    move-exception v11

    goto :goto_3
.end method

.method public varargs sendKeys([I)V
    .locals 4
    .parameter "keys"

    .prologue
    array-length v0, p1

    .local v0, count:I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .local v2, instrumentation:Landroid/app/Instrumentation;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public varargs sendRepeatedKeys([I)V
    .locals 8
    .parameter "keys"

    .prologue
    array-length v0, p1

    .local v0, count:I
    and-int/lit8 v6, v0, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The size of the keys array must be a multiple of 2"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .local v2, instrumentation:Landroid/app/Instrumentation;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    aget v5, p1, v1

    .local v5, keyCount:I
    add-int/lit8 v6, v1, 0x1

    aget v4, p1, v6

    .local v4, keyCode:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v5, :cond_1

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .end local v3           #j:I
    .end local v4           #keyCode:I
    .end local v5           #keyCount:I
    :cond_2
    invoke-virtual {v2}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void

    .restart local v3       #j:I
    .restart local v4       #keyCode:I
    .restart local v5       #keyCount:I
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    return-void
.end method
