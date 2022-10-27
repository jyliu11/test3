from flask import render_template, request, Blueprint
from app import db
from app.views.auth import login_required

bp = Blueprint("manager", __name__, url_prefix="/")

@bp.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        name = request.form.get("name").strip()

        if name:
            return render_template("manager/index.html", users = db.get_user_payments(name))
     
    return render_template("manager/index.html", users = db.get_user_payments())

@bp.route("/edit", methods=["GET", "POST"])
@login_required
def edit_payments():
    if request.method == "POST":
        name = request.form.get("name").strip()

        if name:
            return render_template("manager/edit.html", users = db.get_user_payments(name), income = db.get_income())
     
    return render_template("manager/edit.html", users = db.get_user_payments(), income = db.get_income())
