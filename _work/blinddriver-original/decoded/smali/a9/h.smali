.class public abstract La9/h;
.super La9/g;
.source "SourceFile"

# interfaces
.implements Lj9/k;


# instance fields
.field public final l:I


# direct methods
.method public constructor <init>(ILy8/c;)V
    .locals 0

    invoke-direct {p0, p2}, La9/g;-><init>(Ly8/c;)V

    iput p1, p0, La9/h;->l:I

    return-void
.end method


# virtual methods
.method public final getArity()I
    .locals 0

    iget p0, p0, La9/h;->l:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, La9/a;->getCompletion()Ly8/c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lj9/z;->a:Lj9/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lj9/a0;->a(Lj9/k;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-super {p0}, La9/a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
