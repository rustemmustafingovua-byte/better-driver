.class public abstract Lr/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;

.field public static final b:Lr/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp2/y;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lp2/y;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/c;)V

    sput-object v1, Lr/f;->a:Lr0/a0;

    new-instance v0, Lr/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr/f;->b:Lr/e;

    return-void
.end method
