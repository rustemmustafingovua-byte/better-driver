.class public abstract La9/g;
.super La9/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ly8/c;)V
    .locals 0

    invoke-direct {p0, p1}, La9/a;-><init>(Ly8/c;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ly8/c;->getContext()Ly8/h;

    move-result-object p0

    sget-object p1, Ly8/i;->l:Ly8/i;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getContext()Ly8/h;
    .locals 0

    sget-object p0, Ly8/i;->l:Ly8/i;

    return-object p0
.end method
