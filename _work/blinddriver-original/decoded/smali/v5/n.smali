.class public abstract Lv5/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv5/l;

.field public static final b:Lv5/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv5/k;

    new-instance v0, Lv5/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv5/l;-><init>(I)V

    sput-object v0, Lv5/n;->a:Lv5/l;

    new-instance v0, Lv5/m;

    invoke-direct {v0, v1}, Lv5/m;-><init>(I)V

    sput-object v0, Lv5/n;->b:Lv5/m;

    return-void
.end method
