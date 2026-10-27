.class final Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Messages.g.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->remove(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesApiRegistrar"
    f = "Messages.g.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x65
    }
    m = "remove"
    n = {
        "key",
        "it",
        "$i$a$-let-SharedPreferencesApiRegistrar$remove$2"
    }
    nl = {
        0x66
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
    v = 0x2
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->label:I

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar$remove$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesApiRegistrar;->remove(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
