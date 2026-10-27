.class public final Lkd/f;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Z

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lkd/j;

.field public o:I


# direct methods
.method public constructor <init>(Lkd/j;La9/c;)V
    .locals 0

    iput-object p1, p0, Lkd/f;->n:Lkd/j;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkd/f;->m:Ljava/lang/Object;

    iget p1, p0, Lkd/f;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkd/f;->o:I

    iget-object p1, p0, Lkd/f;->n:Lkd/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkd/j;->f(ZLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
