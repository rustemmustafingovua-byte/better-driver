.class final Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SharedPreferencesPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->setDeprecatedStringList(Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesBackend$setDeprecatedStringList$2"
    f = "SharedPreferencesPlugin.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $options:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

.field final synthetic $value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$value:Ljava/util/List;

    iput-object p3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$options:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iput-object p4, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$key:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

    iget-object v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$value:Ljava/util/List;

    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$options:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    iget-object v4, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$key:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Ljava/util/List;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 363
    iget v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

    invoke-static {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->access$getListEncoder$p(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;)Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$value:Ljava/util/List;

    invoke-interface {v0, v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesListEncoder;->encode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "valueString":Ljava/lang/String;
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;

    iget-object v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$options:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;

    invoke-static {v1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;->access$createSharedPreferences(Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesBackend$setDeprecatedStringList$2;->$key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
