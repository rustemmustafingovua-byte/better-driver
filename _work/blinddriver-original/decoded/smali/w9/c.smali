.class public final Lw9/c;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lw9/e;

.field public n:I


# direct methods
.method public constructor <init>(Lw9/e;La9/c;)V
    .locals 0

    iput-object p1, p0, Lw9/c;->m:Lw9/e;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lw9/c;->l:Ljava/lang/Object;

    iget p1, p0, Lw9/c;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw9/c;->n:I

    iget-object p1, p0, Lw9/c;->m:Lw9/e;

    invoke-static {p1, p0}, Lw9/e;->C(Lw9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lw9/l;

    invoke-direct {p1, p0}, Lw9/l;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
