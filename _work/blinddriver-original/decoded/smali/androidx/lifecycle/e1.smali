.class public final Landroidx/lifecycle/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ld7/g;


# instance fields
.field public final a:Lg5/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld7/g;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/e1;->b:Ld7/g;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/f1;Landroidx/lifecycle/c1;Ld4/b;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg5/i;

    invoke-direct {v0, p1, p2, p3}, Lg5/i;-><init>(Landroidx/lifecycle/f1;Landroidx/lifecycle/c1;Ld4/b;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/e1;->a:Lg5/i;

    return-void
.end method
