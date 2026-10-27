.class public final Lz8/c;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:I

.field public final synthetic m:Li9/e;

.field public final synthetic n:Ly8/c;


# direct methods
.method public constructor <init>(Ly8/c;Ly8/h;Li9/e;Ly8/c;)V
    .locals 0

    iput-object p3, p0, Lz8/c;->m:Li9/e;

    iput-object p4, p0, Lz8/c;->n:Ly8/c;

    invoke-direct {p0, p1, p2}, La9/c;-><init>(Ly8/c;Ly8/h;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lz8/c;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lz8/c;->l:I

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This coroutine had already completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput v2, p0, Lz8/c;->l:I

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    const-string p1, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>"

    iget-object v0, p0, Lz8/c;->m:Li9/e;

    invoke-static {v0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lj9/b0;->b(ILjava/lang/Object;)V

    iget-object p1, p0, Lz8/c;->n:Ly8/c;

    invoke-interface {v0, p1, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
