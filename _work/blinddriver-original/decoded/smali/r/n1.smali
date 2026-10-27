.class public final Lr/n1;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lr/p1;

.field public n:I


# direct methods
.method public constructor <init>(Lr/p1;La9/c;)V
    .locals 0

    iput-object p1, p0, Lr/n1;->m:Lr/p1;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr/n1;->l:Ljava/lang/Object;

    iget p1, p0, Lr/n1;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/n1;->n:I

    iget-object p1, p0, Lr/n1;->m:Lr/p1;

    invoke-virtual {p1, p0}, Lr/p1;->e(La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
