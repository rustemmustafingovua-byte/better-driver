.class public final Ly9/j;
.super Ly9/f;
.source "SourceFile"


# instance fields
.field public final p:La9/i;


# direct methods
.method public constructor <init>(Li9/f;Lx9/g;Ly8/h;ILw9/a;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Ly9/f;-><init>(Lx9/g;Ly8/h;ILw9/a;)V

    check-cast p1, La9/i;

    iput-object p1, p0, Ly9/j;->p:La9/i;

    return-void
.end method


# virtual methods
.method public final d(Ly8/h;ILw9/a;)Ly9/e;
    .locals 6

    new-instance v0, Ly9/j;

    iget-object v1, p0, Ly9/j;->p:La9/i;

    iget-object v2, p0, Ly9/f;->o:Lx9/g;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ly9/j;-><init>(Li9/f;Lx9/g;Ly8/h;ILw9/a;)V

    return-object v0
.end method

.method public final f(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ly9/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ly9/h;-><init>(Ly9/j;Lx9/h;Ly8/c;)V

    invoke-static {v0, p2}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
