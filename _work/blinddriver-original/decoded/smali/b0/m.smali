.class public abstract Lb0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;

.field public static final b:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La1/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lb0/m;->a:Lr0/a0;

    new-instance v0, Lr0/a0;

    sget-object v1, Lb0/l;->l:Lb0/l;

    invoke-direct {v0, v1}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v0, Lb0/m;->b:Lr0/a0;

    return-void
.end method
