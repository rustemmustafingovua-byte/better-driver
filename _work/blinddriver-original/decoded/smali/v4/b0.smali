.class public abstract Lv4/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv4/b;

    const-string v1, "translationAlpha"

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v3, v1, v2}, Lv4/b;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lv4/b0;->a:Lv4/b;

    new-instance v0, Lv4/b;

    const-string v1, "clipBounds"

    const/4 v2, 0x6

    const-class v3, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v1, v2}, Lv4/b;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method
