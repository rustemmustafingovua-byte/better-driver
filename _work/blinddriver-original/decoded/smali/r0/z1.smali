.class public final Lr0/z1;
.super Ly8/a;
.source "SourceFile"

# interfaces
.implements Lu9/r;


# instance fields
.field public final synthetic m:Le1/e;

.field public final synthetic n:Lr0/a2;


# direct methods
.method public constructor <init>(Le1/e;Lr0/a2;)V
    .locals 1

    sget-object v0, Lu9/q;->l:Lu9/q;

    iput-object p1, p0, Lr0/z1;->m:Le1/e;

    iput-object p2, p0, Lr0/z1;->n:Lr0/a2;

    invoke-direct {p0, v0}, Ly8/a;-><init>(Ly8/g;)V

    return-void
.end method


# virtual methods
.method public final w(Ljava/lang/Throwable;Ly8/h;)V
    .locals 3

    new-instance v0, Lb0/n;

    const/4 v1, 0x3

    iget-object v2, p0, Lr0/z1;->m:Le1/e;

    iget-object p0, p0, Lr0/z1;->n:Lr0/a2;

    invoke-direct {v0, v1, v2, p0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Ll9/a;->F(Ljava/lang/Throwable;Li9/a;)Z

    sget-object v0, Lu9/q;->l:Lu9/q;

    iget-object p0, p0, Lr0/a2;->l:Ly8/h;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    check-cast p0, Lu9/r;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lu9/r;->w(Ljava/lang/Throwable;Ly8/h;)V

    return-void

    :cond_0
    throw p1
.end method
