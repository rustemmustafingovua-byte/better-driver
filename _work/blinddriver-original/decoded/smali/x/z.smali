.class public final Lx/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/r2;


# instance fields
.field public final l:Lr0/e1;

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    div-int/lit8 v0, p1, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v1, v0, -0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 v0, v0, 0x82

    invoke-static {v1, v0}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v0

    sget-object v1, Lr0/e;->r:Lr0/e;

    new-instance v2, Lr0/e1;

    invoke-direct {v2, v0, v1}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object v2, p0, Lx/z;->l:Lr0/e1;

    iput p1, p0, Lx/z;->m:I

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx/z;->l:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo9/d;

    return-object p0
.end method
