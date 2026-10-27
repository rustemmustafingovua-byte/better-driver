.class public final Ls0/i;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/i;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/i;->c:Ls0/i;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    iget p0, p3, Lr0/h2;->t:I

    new-instance p1, Lg0/k;

    const/16 p2, 0x17

    invoke-direct {p1, p2, p4, p3}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p0, p1}, Lr0/h2;->n(ILi9/e;)V

    return-void
.end method
