.class public final Lr0/f1;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Li9/c;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lf2/x0;

.field public o:I


# direct methods
.method public constructor <init>(Lf2/x0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr0/f1;->n:Lf2/x0;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr0/f1;->m:Ljava/lang/Object;

    iget p1, p0, Lr0/f1;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr0/f1;->o:I

    iget-object p1, p0, Lr0/f1;->n:Lf2/x0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
