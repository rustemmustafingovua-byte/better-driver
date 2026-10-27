.class public abstract Lb0/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb0/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lb0/k1;->s:I

    new-instance v0, Lb0/j1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb0/j1;-><init>(I)V

    new-instance v2, Lb0/l1;

    invoke-direct {v2, v1, v0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    sput-object v2, Lb0/m1;->a:Lb0/l1;

    return-void
.end method
