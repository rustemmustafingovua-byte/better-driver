.class public final Le0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Le0/c;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le0/c;

    sget-object v1, Lu8/r;->l:Lu8/r;

    invoke-direct {v0, v1}, Le0/c;-><init>(Ljava/util/List;)V

    sput-object v0, Le0/c;->b:Le0/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x38

    iget-object p0, p0, Le0/c;->a:Ljava/lang/Object;

    const-string v2, "\n\t"

    invoke-static {p0, v2, v0, v1}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextContextMenuData(components="

    const/16 v1, 0x29

    invoke-static {v1, v0, p0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
