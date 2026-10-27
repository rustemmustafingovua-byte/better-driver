.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;
.super Ljava/lang/Object;
.source "Messages.g.kt"

# interfaces
.implements Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0005\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0096@\u00a2\u0006\u0002\u0010\u000cJ\u001e\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0096@\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0011J\u001e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0013H\u0096@\u00a2\u0006\u0002\u0010\u0014J\u001e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0016H\u0096@\u00a2\u0006\u0002\u0010\u0017J\u001e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0011J$\u0010\u0019\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001aH\u0096@\u00a2\u0006\u0002\u0010\u001bJ&\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00072\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001aH\u0096@\u00a2\u0006\u0002\u0010\u001bJ2\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020!0 2\u0006\u0010\u001d\u001a\u00020\u00072\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001aH\u0096@\u00a2\u0006\u0002\u0010\u001bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;",
        "<init>",
        "()V",
        "api",
        "register",
        "name",
        "",
        "getInstance",
        "remove",
        "",
        "key",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setBool",
        "value",
        "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setString",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setInt",
        "",
        "(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setDouble",
        "",
        "(Ljava/lang/String;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setEncodedStringList",
        "setDeprecatedStringList",
        "",
        "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clear",
        "prefix",
        "allowList",
        "getAll",
        "",
        "",
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
.field private api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic register$default(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;Ljava/lang/String;ILjava/lang/Object;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;
    .locals 0

    .line 80
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 82
    const-string p2, "PigeonDefaultClassName32uh4ui3lh445uh4h3l2l455g4y34u"

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->register(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "allowList"    # Ljava/util/List;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 179
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/util/List;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 183
    :catch_0
    move-exception v4

    goto :goto_2

    .line 179
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 180
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 181
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    nop

    .line 182
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$clear$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->clear(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 179
    return-object v2

    .line 182
    :cond_1
    move v2, v4

    .line 183
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 184
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$clear$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 187
    const-string v3, "SharedPreferencesApi has not been registered"

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

.method public getAll(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "allowList"    # Ljava/util/List;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
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

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 190
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/util/List;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 194
    :catch_0
    move-exception v4

    goto :goto_2

    .line 190
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 192
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    nop

    .line 193
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$getAll$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->getAll(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 190
    return-object v2

    .line 193
    :cond_1
    move v2, v4

    .line 194
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 195
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$getAll$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 198
    const-string v3, "SharedPreferencesApi has not been registered"

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

.method public final getInstance(Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages_gKt;->getSharedPreferencesApiInstances()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    return-object v0
.end method

.method public final register(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;Ljava/lang/String;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;
    .locals 1
    .param p1, "api"    # Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .param p2, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .line 86
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages_gKt;->getSharedPreferencesApiInstances()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages_gKt;->getSharedPreferencesApiInstances()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;

    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 98
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v4

    goto :goto_2

    .line 98
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 100
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    nop

    .line 101
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->label:I

    invoke-interface {v3, p1, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->remove(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 98
    return-object v2

    .line 101
    :cond_1
    move v2, v4

    .line 102
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 103
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$remove$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 106
    const-string v3, "SharedPreferencesApi has not been registered"

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

.method public setBool(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 109
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    iget-boolean p2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->Z$0:Z

    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_2

    .line 113
    :catch_0
    move-exception v4

    goto :goto_3

    .line 109
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_3

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 111
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    nop

    .line 112
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

    iput-object v7, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->Z$0:Z

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->I$0:I

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setBool$1;->label:I

    invoke-interface {v3, p1, v6, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->setBool(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_2

    .line 109
    return-object v2

    .line 112
    :cond_2
    move v2, v4

    .line 113
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    :goto_2
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    :catch_1
    move-exception v2

    move v8, v4

    move-object v4, v2

    move v2, v8

    .line 114
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setBool$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 117
    const-string v3, "SharedPreferencesApi has not been registered"

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

.method public setDeprecatedStringList(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 168
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/util/List;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 172
    :catch_0
    move-exception v4

    goto :goto_2

    .line 168
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 170
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    nop

    .line 171
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDeprecatedStringList$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->setDeprecatedStringList(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 168
    return-object v2

    .line 171
    :cond_1
    move v2, v4

    .line 172
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 173
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDeprecatedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 176
    const-string v3, "SharedPreferencesApi has not been registered"

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

.method public setDouble(Ljava/lang/String;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;

    invoke-direct {v0, p0, p4}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 142
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    iget-wide p2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->D$0:D

    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 146
    :catch_0
    move-exception v4

    goto :goto_2

    .line 142
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 144
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    nop

    .line 145
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->L$1:Ljava/lang/Object;

    iput-wide p2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->D$0:D

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setDouble$1;->label:I

    invoke-interface {v3, p1, p2, p3, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->setDouble(Ljava/lang/String;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 142
    return-object v2

    .line 145
    :cond_1
    move v2, v4

    .line 146
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 147
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setDouble$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 150
    const-string v3, "SharedPreferencesApi has not been registered"

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

.method public setEncodedStringList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 153
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/lang/String;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 157
    :catch_0
    move-exception v4

    goto :goto_2

    .line 153
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 154
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 155
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    nop

    .line 156
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setEncodedStringList$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->setEncodedStringList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 153
    return-object v2

    .line 156
    :cond_1
    move v2, v4

    .line 157
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 158
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setEncodedStringList$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 161
    const-string v3, "SharedPreferencesApi has not been registered"

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

.method public setInt(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;

    invoke-direct {v0, p0, p4}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 131
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    iget-wide p2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->J$0:J

    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 135
    :catch_0
    move-exception v4

    goto :goto_2

    .line 131
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 133
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    nop

    .line 134
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->L$1:Ljava/lang/Object;

    iput-wide p2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->J$0:J

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setInt$1;->label:I

    invoke-interface {v3, p1, p2, p3, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->setInt(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 131
    return-object v2

    .line 134
    :cond_1
    move v2, v4

    .line 135
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 136
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setInt$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 139
    const-string v3, "SharedPreferencesApi has not been registered"

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

.method public setString(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;

    invoke-direct {v0, p0, p3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 120
    iget v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->label:I

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
    iget v2, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->I$0:I

    .local v2, "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    iget-object v3, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    .local v3, "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->L$1:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/lang/String;

    iget-object v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v4

    goto :goto_2

    .line 120
    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->api:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;

    if-eqz v3, :cond_2

    .restart local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    const/4 v4, 0x0

    .line 122
    .local v4, "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    nop

    .line 123
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->I$0:I

    const/4 v5, 0x1

    iput v5, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$setString$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;->setString(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v2, :cond_1

    .line 120
    return-object v2

    .line 123
    :cond_1
    move v2, v4

    .line 124
    .end local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    :goto_1
    return-object v5

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    .restart local v4    # "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    :catch_1
    move-exception v2

    move v6, v4

    move-object v4, v2

    move v2, v6

    .line 125
    .restart local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    throw v4

    .end local v2    # "$i$a$-let-SharedPreferencesApiRegistrar$setString$2":I
    .end local v3    # "it":Lio/flutter/plugins/sharedpreferences/SharedPreferencesApi;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 128
    const-string v3, "SharedPreferencesApi has not been registered"

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
