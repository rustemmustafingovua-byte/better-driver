.class public abstract Lo0/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc2/k;

.field public static final b:Lc2/v1;

.field public static final c:Lr0/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/k;

    sget-object v1, Lo0/m1;->s:Lo0/m1;

    invoke-direct {v0, v1}, Lc2/a;-><init>(Li9/e;)V

    sput-object v0, Lo0/n1;->a:Lc2/k;

    new-instance v0, Lc2/v1;

    sget-object v1, Lo0/l1;->s:Lo0/l1;

    invoke-direct {v0, v1}, Lc2/a;-><init>(Li9/e;)V

    sput-object v0, Lo0/n1;->b:Lc2/v1;

    new-instance v0, Ln/k1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    new-instance v0, Ln/k1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lo0/n1;->c:Lr0/s2;

    return-void
.end method
