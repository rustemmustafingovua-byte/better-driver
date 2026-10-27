.class public final Lr/l1;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lgc/f;

.field public n:I


# direct methods
.method public constructor <init>(Lgc/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Lr/l1;->m:Lgc/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/l1;->l:Ljava/lang/Object;

    iget p1, p0, Lr/l1;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/l1;->n:I

    iget-object p1, p0, Lr/l1;->m:Lgc/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lgc/f;->l(Lr/n2;Lr/j1;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
