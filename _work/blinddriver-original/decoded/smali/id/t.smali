.class public final Lid/t;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lid/u;

.field public n:I


# direct methods
.method public constructor <init>(Lid/u;La9/c;)V
    .locals 0

    iput-object p1, p0, Lid/t;->m:Lid/u;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lid/t;->l:Ljava/lang/Object;

    iget p1, p0, Lid/t;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lid/t;->n:I

    iget-object p1, p0, Lid/t;->m:Lid/u;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lid/u;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
