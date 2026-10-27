.class public final Lf2/f2;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lf2/f2;->l:Ljava/lang/Object;

    iget p1, p0, Lf2/f2;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lf2/f2;->m:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lf2/h2;->a(Lk0/n;Landroidx/lifecycle/j0;La9/c;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method
