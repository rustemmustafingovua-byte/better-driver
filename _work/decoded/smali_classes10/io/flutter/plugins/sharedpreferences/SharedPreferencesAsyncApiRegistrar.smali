.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;
.super Ljava/lang/Object;
.source "MessagesAsync.g.kt"

# interfaces
.implements Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0010J&\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0012J&\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0015J&\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0018J&\u0010\u0019\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0012J,\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001cJ \u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001eJ \u0010\u001f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001eJ \u0010 \u001a\u0004\u0018\u00010\u00172\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001eJ \u0010!\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001eJ&\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001eJ \u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u001eJ&\u0010%\u001a\u00020\n2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\'J2\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020*0)2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\'J,\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001b2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\'R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;",
        "<init>",
        "()V",
        "api",
        "register",
        "name",
        "",
        "getInstance",
        "setBool",
        "",
        "key",
        "value",
        "",
        "options",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
        "(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setString",
        "(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setInt",
        "",
        "(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setDouble",
        "",
        "(Ljava/lang/String;DLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setEncodedStringList",
        "setDeprecatedStringList",
        "",
        "(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getString",
        "(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBool",
        "getDouble",
        "getInt",
        "getPlatformEncodedStringList",
        "getStringList",
        "Lio/flutter/plugins/sharedpreferences/StringListResult;",
        "clear",
        "allowList",
        "(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAll",
        "",
        "",
        "getKeys",
        "shared_preferences_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic register$default(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;Ljava/lang/String;ILjava/lang/Object;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;
    .locals 0

    .line 360
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 362
    const-string p2, "PigeonDefaultClassName32uh4ui3lh445uh4h3l2l455g4y34u"

    .line 360
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->register(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "allowList"    # Ljava/util/List;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 540
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 544
    :catch_0
    move-exception v4

    goto :goto_2

    .line 540
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 541
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 542
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    nop

    .line 543
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$clear$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->clear(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 540
    return-object v2

    .line 543
    :cond_1
    move v2, v4

    .line 544
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    :goto_1
    :try_start_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 545
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$clear$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 548
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAll(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "allowList"    # Ljava/util/List;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 551
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 558
    :catch_0
    move-exception v4

    goto :goto_2

    .line 551
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 555
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 556
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    nop

    .line 557
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getAll$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->getAll(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 551
    return-object v2

    .line 557
    :cond_1
    move v2, v4

    .line 558
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 559
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getAll$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 562
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBool(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 479
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 483
    :catch_0
    move-exception v4

    goto :goto_2

    .line 479
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 480
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 481
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    nop

    .line 482
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getBool$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->getBool(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 479
    return-object v2

    .line 482
    :cond_1
    move v2, v4

    .line 483
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 484
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getBool$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 487
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDouble(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 490
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 494
    :catch_0
    move-exception v4

    goto :goto_2

    .line 490
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 491
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 492
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    nop

    .line 493
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getDouble$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->getDouble(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 490
    return-object v2

    .line 493
    :cond_1
    move v2, v4

    .line 494
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 495
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getDouble$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 498
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInstance(Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/MessagesAsync_gKt;->getSharedPreferencesAsyncApiInstances()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 501
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 505
    :catch_0
    move-exception v4

    goto :goto_2

    .line 501
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 502
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 503
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    nop

    .line 504
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getInt$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->getInt(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 501
    return-object v2

    .line 504
    :cond_1
    move v2, v4

    .line 505
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 506
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getInt$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 509
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeys(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "allowList"    # Ljava/util/List;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 565
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 572
    :catch_0
    move-exception v4

    goto :goto_2

    .line 565
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 569
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 570
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    nop

    .line 571
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getKeys$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->getKeys(Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 565
    return-object v2

    .line 571
    :cond_1
    move v2, v4

    .line 572
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 573
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getKeys$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 576
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlatformEncodedStringList(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 512
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 519
    :catch_0
    move-exception v4

    goto :goto_2

    .line 512
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 516
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 517
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    nop

    .line 518
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->getPlatformEncodedStringList(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 512
    return-object v2

    .line 518
    :cond_1
    move v2, v4

    .line 519
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 520
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getPlatformEncodedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 523
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getString(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 468
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 472
    :catch_0
    move-exception v4

    goto :goto_2

    .line 468
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 469
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 470
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    nop

    .line 471
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getString$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->getString(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 468
    return-object v2

    .line 471
    :cond_1
    move v2, v4

    .line 472
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 473
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getString$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 476
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStringList(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/flutter/plugins/sharedpreferences/StringListResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 526
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 533
    :catch_0
    move-exception v4

    goto :goto_2

    .line 526
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 530
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 531
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    nop

    .line 532
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$getStringList$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->getStringList(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 526
    return-object v2

    .line 532
    :cond_1
    move v2, v4

    .line 533
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 534
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$getStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 537
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final register(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;
    .locals 1
    .param p1, "api"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    if-eqz p1, :cond_0

    .line 365
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .line 366
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/MessagesAsync_gKt;->getSharedPreferencesAsyncApiInstances()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/MessagesAsync_gKt;->getSharedPreferencesAsyncApiInstances()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_0
    return-object p0
.end method

.method public setBool(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;

    invoke-direct {v0, p0, p4}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 378
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    iget-boolean p2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->Z$0:Z

    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->L$1:Ljava/lang/Object;

    move-object p3, v4

    check-cast p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 386
    :catch_0
    move-exception v4

    goto :goto_3

    .line 378
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 383
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_3

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 384
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    nop

    .line 385
    const/4 v5, 0x1

    if-eqz p2, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->L$2:Ljava/lang/Object;

    iput-boolean p2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->Z$0:Z

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->I$0:I

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setBool$1;->label:I

    invoke-interface {v3, p1, v6, p3, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->setBool(Ljava/lang/String;ZLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_2

    .line 378
    return-object v2

    .line 385
    :cond_2
    move v2, v4

    .line 386
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    :goto_2
    :try_start_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    :catch_1
    move-exception v2

    move v8, v4

    move-object v4, v2

    move v2, v8

    .line 387
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setBool$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 390
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDeprecatedStringList(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .param p3, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;

    invoke-direct {v0, p0, p4}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 453
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->L$2:Ljava/lang/Object;

    move-object p3, v4

    check-cast p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/util/List;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 461
    :catch_0
    move-exception v4

    goto :goto_2

    .line 453
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 458
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 459
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    nop

    .line 460
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$1;->label:I

    invoke-interface {v3, p1, p2, p3, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->setDeprecatedStringList(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 453
    return-object v2

    .line 460
    :cond_1
    move v2, v4

    .line 461
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    :goto_1
    :try_start_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 462
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDeprecatedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 465
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDouble(Ljava/lang/String;DLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;

    invoke-direct {v0, p0, p5}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v7, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->result:Ljava/lang/Object;

    .local v7, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 419
    iget v1, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-object v2, p1

    move-wide v3, p2

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":D
    .local v2, "key":Ljava/lang/String;
    .local v3, "value":D
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":D
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":D
    :pswitch_0
    iget v1, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->I$0:I

    .local v1, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    iget-wide p2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->D$0:D

    iget-object v0, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->L$2:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v2, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v0, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->L$1:Ljava/lang/Object;

    move-object p4, v0

    check-cast p4, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v0, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->L$0:Ljava/lang/Object;

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 427
    :catch_0
    move-exception v0

    goto :goto_2

    .line 419
    .end local v1    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    .end local v2    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 424
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v1, :cond_2

    .local v1, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v8, 0x0

    .line 425
    .local v8, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    nop

    .line 426
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->L$0:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->L$2:Ljava/lang/Object;

    iput-wide p2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->D$0:D

    iput v8, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->I$0:I

    const/4 v2, 0x1

    iput v2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setDouble$1;->label:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":D
    .end local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v2, "key":Ljava/lang/String;
    .restart local v3    # "value":D
    .local v5, "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    :try_start_2
    invoke-interface/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->setDouble(Ljava/lang/String;DLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p1, v0, :cond_1

    .line 419
    return-object v0

    .line 426
    :cond_1
    move-object p1, v2

    move-wide p2, v3

    move-object p4, v5

    move-object v2, v1

    move v1, v8

    .line 427
    .end local v3    # "value":D
    .end local v5    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .end local v8    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    .local v1, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    .local v2, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":D
    .restart local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    :goto_1
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":D
    .end local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v1, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .local v2, "key":Ljava/lang/String;
    .restart local v3    # "value":D
    .restart local v5    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .restart local v8    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    :catch_1
    move-exception v0

    move-object p1, v2

    move-wide p2, v3

    move-object p4, v5

    move-object v2, v1

    move v1, v8

    goto :goto_2

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":D
    .end local v5    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":D
    .restart local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    :catch_2
    move-exception v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v2, v1

    move v1, v8

    .line 428
    .end local v8    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    .local v2, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :goto_2
    throw v0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setDouble$2":I
    .end local v2    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :cond_2
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":D
    .local v2, "key":Ljava/lang/String;
    .restart local v3    # "value":D
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 431
    const-string p2, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEncodedStringList(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;

    invoke-direct {v0, p0, p4}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 434
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->L$2:Ljava/lang/Object;

    move-object p3, v4

    check-cast p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/lang/String;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 442
    :catch_0
    move-exception v4

    goto :goto_2

    .line 434
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 439
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 440
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    nop

    .line 441
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setEncodedStringList$1;->label:I

    invoke-interface {v3, p1, p2, p3, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->setEncodedStringList(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 434
    return-object v2

    .line 441
    :cond_1
    move v2, v4

    .line 442
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    :goto_1
    :try_start_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 443
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setEncodedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 446
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInt(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;

    invoke-direct {v0, p0, p5}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v7, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->result:Ljava/lang/Object;

    .local v7, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 408
    iget v1, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-object v2, p1

    move-wide v3, p2

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    .local v2, "key":Ljava/lang/String;
    .local v3, "value":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":J
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":J
    :pswitch_0
    iget v1, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->I$0:I

    .local v1, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    iget-wide p2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->J$0:J

    iget-object v0, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->L$2:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v2, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v0, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->L$1:Ljava/lang/Object;

    move-object p4, v0

    check-cast p4, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v0, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->L$0:Ljava/lang/Object;

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 412
    :catch_0
    move-exception v0

    goto :goto_2

    .line 408
    .end local v1    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    .end local v2    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v1, :cond_2

    .local v1, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v8, 0x0

    .line 410
    .local v8, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    nop

    .line 411
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->L$0:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->L$2:Ljava/lang/Object;

    iput-wide p2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->J$0:J

    iput v8, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->I$0:I

    const/4 v2, 0x1

    iput v2, v6, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setInt$1;->label:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    .end local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v2, "key":Ljava/lang/String;
    .restart local v3    # "value":J
    .local v5, "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    :try_start_2
    invoke-interface/range {v1 .. v6}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->setInt(Ljava/lang/String;JLio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p1, v0, :cond_1

    .line 408
    return-object v0

    .line 411
    :cond_1
    move-object p1, v2

    move-wide p2, v3

    move-object p4, v5

    move-object v2, v1

    move v1, v8

    .line 412
    .end local v3    # "value":J
    .end local v5    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .end local v8    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    .local v1, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    .local v2, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":J
    .restart local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    :goto_1
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    .end local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .local v1, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .local v2, "key":Ljava/lang/String;
    .restart local v3    # "value":J
    .restart local v5    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .restart local v8    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    :catch_1
    move-exception v0

    move-object p1, v2

    move-wide p2, v3

    move-object p4, v5

    move-object v2, v1

    move v1, v8

    goto :goto_2

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":J
    .end local v5    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":J
    .restart local p4    # "options":Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    :catch_2
    move-exception v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v2, v1

    move v1, v8

    .line 413
    .end local v8    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    .local v2, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :goto_2
    throw v0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setInt$2":I
    .end local v2    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :cond_2
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":J
    .local v2, "key":Ljava/lang/String;
    .restart local v3    # "value":J
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 416
    const-string p2, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "options"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;

    invoke-direct {v0, p0, p4}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 393
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->L$2:Ljava/lang/Object;

    move-object p3, v4

    check-cast p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/lang/String;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    :catch_0
    move-exception v4

    goto :goto_2

    .line 393
    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 398
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    const/4 v4, 0x0

    .line 399
    .local v4, "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    nop

    .line 400
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar$setString$1;->label:I

    invoke-interface {v3, p1, p2, p3, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;->setString(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 393
    return-object v2

    .line 400
    :cond_1
    move v2, v4

    .line 401
    .end local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    :goto_1
    :try_start_2
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 402
    .restart local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesAsyncApiRegistrar$setString$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 405
    const-string v3, "SharedPreferencesAsyncApi has not been registered"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
