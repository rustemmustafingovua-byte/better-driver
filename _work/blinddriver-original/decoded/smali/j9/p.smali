.class public final Lj9/p;
.super Lj9/q;
.source "SourceFile"

# interfaces
.implements Lp9/d;
.implements Li9/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v1, Lj9/c;->l:Lj9/c;

    const-class v2, Lm2/v;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lj9/t;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d()Lp9/a;
    .locals 1

    sget-object v0, Lj9/z;->a:Lj9/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Lj9/t;->r:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj9/t;->h()Lp9/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    check-cast v0, Lp9/d;

    check-cast v0, Lj9/p;

    invoke-virtual {v0}, Lj9/p;->i()V

    return-void

    :cond_0
    new-instance p0, Lh9/a;

    const-string v0, "Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj9/p;->i()V

    const/4 p0, 0x0

    throw p0
.end method
