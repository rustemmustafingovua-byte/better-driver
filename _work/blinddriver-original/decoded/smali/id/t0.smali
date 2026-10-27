.class public final Lid/t0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lid/c1;

.field public n:I


# direct methods
.method public constructor <init>(Lid/c1;La9/c;)V
    .locals 0

    iput-object p1, p0, Lid/t0;->m:Lid/c1;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lid/t0;->l:Ljava/lang/Object;

    iget p1, p0, Lid/t0;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lid/t0;->n:I

    iget-object p1, p0, Lid/t0;->m:Lid/c1;

    invoke-virtual {p1, p0}, Lid/c1;->d(La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lt8/m;

    invoke-direct {p1, p0}, Lt8/m;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
