Product.delete_all
25.times do 
	Product.create!(title: 'Programming Ruby 1.9 & 2.0',
	description:
		%{<p>
			Ruby is the fastest growing and most exciting dynamis language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.
		</p>},
	image_url: 'ruby.jpg',
	price: 49.95)
end